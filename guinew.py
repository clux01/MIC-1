import tkinter as tk
from tkinter import *
from tkinter import ttk
from tkinter import font
from tkinter import filedialog
import sys
import os
import threading
import time
from serial import Serial
import sys
import serial
import time
import serial.tools.list_ports

class MIC1:
    def __init__(self):
        #declare global variable
        self.serial_data = ''
        self.filter_data = ''
        self.update_period = 5
        self.serial_object = None
        self.file = None
        self.filename = None
        self.BRAMenable = "w000200000001"
        self.Wenable = "w000300000001"
        self.BRAMdisable = "w000200000000"
        self.Wdisable = "w000300000000"

        #create a window
        self.window = tk.Tk()
        self.window.title('MIC-1')
        w, h = self.window.winfo_screenwidth(), self.window.winfo_screenheight()
        self.window.geometry("%dx%d+0+0" % (w, h))
        self.uartState = False
        self.create_widgets()
        
    #mainloop
    def run(self):
        self.window.mainloop()
        
    #connect uart
    def connect(self):
        global serial_object
        
        port = self.entryCOM.get()
        baud = self.entryBaudrate.get()
        self.serial_object = serial.Serial(port)
        self.serial_object.baudrate = baud
        
        t1 = threading.Thread(target=self.get_data)
        t1.daemon = True
        t1.start()
        
        connected = Label(self.buttontable, text="Connected")
        connected.grid()

    #disconnect uart
    def disconnect(self):
        global serial_object
        
        self.serial_object.close()
        
        disconnected = Label(self.buttontable, text="Disconnected")
        disconnected.grid()

    #get data from mic and display in status window
    def get_data(self):
        global serial_object
        global filter_data

        while (1):
            try:
                self.status.insert(END, self.serial_object.read(8))
                self.status.insert(END, "\n")
                

            except TypeError:
                pass
            self.window.update()
        self.status.insert(END, "\n")
        self.status.update()

    #search for available COM ports
    def serial_ports():    
        return [p.device for p in serial.tools.list_ports.comports()]

    #read from mic or write to mic, data and adress
    def processButtonSend(self):
        global serial_object
        global text
        selection = self.action.get()
    
        #if read is selected, send adress and read command
        if selection == "read":
            send_to_adress = self.entryadress.get()
            send_adress = send_to_adress
            self.serial_object.write(str.encode("w0000000000" + send_adress))
            self.text.insert(END, str.encode("w0000000000" + send_adress))
            self.text.insert(END, "\n")
            self.serial_object.write(str.encode("r0100"))
            self.text.insert(END, str.encode("r0100"))
            time.sleep(0.1)
            self.text.insert(END, "\n")
            self.status.insert(END, "\n")
            self.status.insert(END, self.serial_object.read())
            self.status.insert(END, "\n")
        
        #if write is selcted, send adress and data
        if selection == "write":
            send_data = self.entrydata.get()
            send_to_adress = self.entryadress.get()
            send_adress = send_to_adress
            self.serial_object.write(str.encode("w0000000000" + send_to_adress))
            self.text.insert(END, str.encode("w0000000000" + send_adress))
            self.text.insert(END, "\n")
            self.serial_object.write(str.encode("w0001" + send_data))
            self.text.insert(END, str.encode("w0001" + send_data))
            self.text.insert(END, "\n")
            
        #if 1 line is selected, just sends the one line that was entered in the data entry box
        if selection == "1 line":
            send_data = self.entrydata.get()
            self.serial_object.write(str.encode(send_data))
            self.text.insert(END, str.encode(send_data))
            self.text.insert(END, "\n")
            self.status.insert(END, "\n")
            self.status.insert(END, self.serial_object.read())
            self.status.insert(END, "\n")
            

    #send the whole (mem) file
    def processButtonSendmem(self):
        global file
        global filename
        global serial_object
        global BRAMenable
        global BRAMdisable
        global Wenable
        global Wdisable
        global num_lines
        
        adress = "0".zfill(2)
        for intadress in range(1,num_lines):
            self.serial_object.write(str.encode("w0000000000" + adress))
            self.text.insert(END, str.encode("w0000000000" + adress))
            self.text.insert(END, "\n")
            file = open(filename, 'r')
            memdata = file.readlines()[intadress]
            memdataupper = str.upper(memdata)
            self.serial_object.write(str.encode("w0001" + (memdataupper)))
            self.text.insert(END, str.encode("w0001" + (memdataupper)))
            self.text.insert(END, "\n")
            if adress == "01":
                self.serial_object.write(str.encode(self.BRAMenable))
                self.text.insert(END, str.encode(self.BRAMenable))
                self.text.insert(END, "\n")
            self.serial_object.write(str.encode(self.Wenable))
            self.text.insert(END, str.encode(self.Wenable))
            self.text.insert(END, "\n")
            self.serial_object.write(str.encode(self.Wdisable))
            self.text.insert(END, str.encode((self.Wdisable)))
            self.text.insert(END, "\n")
            intconadress = int(adress, base=16)
            intconadress +=1
            if intconadress % 16 == 0:
                hexa = hex(intconadress)
                hexadress = hexa.strip('0x')
                hadress = str(hexadress + "0")
            else:
                hexa = hex(intconadress)
                hexadress = hexa.strip('0x')
                hadress = str(hexadress)
            uppercaseadress = str.upper(hadress)
            adress = uppercaseadress.zfill(2)
            file.close()
        adress = "0"
        file.close()

    #read all the data back
    def processButtonRead(self):
        global BRAMenable
        global Wenable
        global serial_object
        global num_lines
        
        self.serial_object.write(str.encode(self.Wdisable))
        self.text.insert(END, str.encode((self.Wdisable)))
        self.text.insert(END, "\n")
        
        adress = "0".zfill(2)
        for i in range(1,num_lines):
            self.serial_object.write(str.encode("w0000000000" + adress))
            self.text.insert(END, str.encode("w0000000000" + adress))
            self.text.insert(END, "\n")
            self.serial_object.write(str.encode("r0100"))
            self.text.insert(END, str.encode("r0100"))
            self.text.insert(END, "\n") 
            #self.status.insert(END, "\n")
            #self.status.insert(END, self.serial_object.readline())
            time.sleep(0.1)
            
            intconadress = int(adress, base=16)
            intconadress +=1
            if intconadress % 16 == 0:
                hexa = hex(intconadress)
                hexadress = hexa.strip('0x')
                hadress = str(hexadress + "0")
            else:
                hexa = hex(intconadress)
                hexadress = hexa.strip('0x')
                hadress = str(hexadress)
            uppercaseadress = str.upper(hadress)
            adress = uppercaseadress.zfill(2)
        adress = "0"

    #delete content of send data window and status window
    def processButtonDelete(self):
        self.text.delete("1.0", "end")
        self.status.delete("1.0", "end")
        
    def clickclearfile(self):
        self.frameText.delete("1.0", "end")
    
    #write enable
    def clickWriteEnable(self):
        global Wenable
        global serial_object
        Wenable = "w000300000001"
        self.serial_object.write(str.encode(self.Wenable))
        self.text.insert(END, str.encode((self.Wenable)))
        self.text.insert(END, "\n")

    #write disable 
    def clickWriteDisable(self):
        global serial_object
        global Wdisable
        Wdisable = "w000300000000"
        self.serial_object.write(str.encode(self.Wdisable))
        self.text.insert(END, str.encode((Wdisable)))
        self.text.insert(END, "\n")
            
    #global enable
    def clickGlobalEnable(self):
        global BRAMenable
        global serial_object
        BRAMenable = "w000200000001"
        self.serial_object.write(str.encode(self.BRAMenable))
        self.text.insert(END, str.encode((self.BRAMenable)))
        self.text.insert(END, "\n")
        
    #global disable
    def clickGlobalDisable(self):
        global serial_object
        global BRAMdisable
        BRAMdisable = "w000200000000"
        self.serial_object.write(str.encode(self.BRAMdisable))
        self.text.insert(END, str.encode((self.BRAMdisable)))
        self.text.insert(END, "\n")
    

    #open file and display it
    def fileDialog(self):
        global file
        global filename
        global num_lines
        filename = filedialog.askopenfilename(initialdir=" / ", title="Select A File", filetype=(
            ("MEM files", "*.mem*"),("text files", "*.txt"),("python files", "*.py"), ("all files", "*.*")))
        self.label.configure(text="File Opened: "+filename)
        self.label.configure(width = 50)
        file = open(filename, 'r')
        global txt 
        txt = file.read()
        num_lines = len(txt.splitlines())
        self.numberlines.configure(text=num_lines)
        self.frameText.insert(END, txt)
        file.close()

    #creates all widgets for the gui
    def create_widgets(self):
        #create frame for buttons
        self.buttonframe = LabelFrame(self.window, labelanchor='nw', text="Buttons")
        self.buttonframe.grid(row=2, column=1, sticky=N + S)

        #global/write enable buttons
        self.globalenablebutton = Button(self.buttonframe, text='Global Enable',
                            fg='navy', command=self.clickGlobalEnable)
        self.globalenablebutton.grid(row=3, column=1,sticky=W+E, padx=2, pady=2)

        self.globaldisablebutton = Button(self.buttonframe, text='Global Disable',
                            fg='purple', command=self.clickGlobalDisable)
        self.globaldisablebutton.grid(row=4, column=1,sticky=W+E, padx=2, pady=2)

        self.writeenablebutton = Button(self.buttonframe, text='Write Enable',
                            fg='royalblue', command=self.clickWriteEnable)
        self.writeenablebutton.grid(row=5, column=1,sticky=W+E, padx=2, pady=2)

        self.writedisablebutton = Button(self.buttonframe, text='Write Disable',
                            fg='violet', command=self.clickWriteDisable)
        self.writedisablebutton.grid(row=6, column=1,sticky=W+E, padx=2, pady=2)

        self.writedisablebutton = Button(self.buttonframe, text='Clear File Code',
                            command=self.clickclearfile)
        self.writedisablebutton.grid(row=8, column=1,sticky=W+E, padx=2, pady=2)


        #call a python script
        self.callscript = Button(self.buttonframe, text="Open Script", command=self.fileDialog)
        self.callscript.grid(row=7, column=1, sticky=W+E, padx=2, pady=2)

        #Frame to display file code
        self.textframe = LabelFrame(self.buttonframe, labelanchor='nw',  text='File Code:')
        self.textframe.grid(row=9, column=1, sticky=S + SW)
        self.frameText = Text(self.textframe, width=50, height=33)
        self.frameText.grid(row=1, column=1, sticky=S + W)
        
        #lable to display path of the file that is open
        self.label = ttk.Label(self.buttonframe, text="")
        self.label.grid(row=0, column=1, sticky="ew", padx=5, pady=3)
        
        #create frame for the status of the button and to display number of lines from the imported file
        self.buttonstatusframe = LabelFrame(
            self.window, labelanchor='nw', text="Button Status", width=25)
        self.buttonstatusframe.grid(row=2, column=2, sticky=N + S + W + E)

        #canvas to write the status (disconnected/connected uart)
        self.buttontable = tk.Canvas(self.buttonstatusframe,
                                width=100, height=400)
        self.buttontable.grid(column=2, row=1, padx=5, pady=5)
        
        #space to display number of lines from the imported file
        self.numberlines = Label(self.buttontable, text='')
        self.numberlines.grid()

        #create frame to display the content of the register
        self.statusframe = LabelFrame(self.window, labelanchor='nw',
                                text="Table with content of register", width=50,bd=3)
        self.statusframe.grid(row=2, column=3, sticky=N + S)
        
        #textbox to display status of register
        self.status = Text(self.statusframe, width=50, height=47)
        self.status.grid(row=1, column=1, sticky=N + S)

        # create frame for uart
        self.dataframe = LabelFrame(self.window, text='UART', width=50)
        self.dataframe.grid(column=5, row=2, sticky=N+W+S)
        
        #frame for uart settings (com/baudrate)
        self.uartframe = LabelFrame(self.dataframe, text='UART settings',width=50)
        self.uartframe.grid(column=1, row=1, sticky=N+W+S+E)
        
        #lable and entry for the COM
        self.labelCOM = Label(self.uartframe, text="COMx: ", width=15)
        self.entryCOM = ttk.Combobox(self.uartframe, values=MIC1.serial_ports(), width=12)
        self.labelCOM.grid(row=1, column=1, padx=2, pady=2)
        self.entryCOM.grid(row=1, column=2, padx=2, pady=2)
        
        #lable and entry for the baudrate
        self.labelBaudrate = Label(self.uartframe, text="Baudrate: ", width=15)
        self.Baudrate = StringVar(value="9600")
        self.entryBaudrate = Entry(self.uartframe, textvariable=self.Baudrate, width=15)
        self.labelBaudrate.grid(row=2, column=1, padx=2, pady=2)
        self.entryBaudrate.grid(row=2, column=2, padx=2, pady=2)
        
        #blank lable between buttons and entry boxes
        self.blank_label = Label(self.uartframe, text="", width=5)
        self.blank_label.grid(row=1, column=3, columnspan=1)

        #connect button for uart
        self.buttonC = tk.Button(self.uartframe, text="Connect", command=self.connect, width=15, fg='green')
        self.buttonC.grid(row=1, column=4, padx=2, pady=2, sticky=E)

        #connect button for uart
        self.buttonD = tk.Button(self.uartframe, text="Disconnect", command=self.disconnect, width=15, fg='red')
        self.buttonD.grid(row=2, column=4, padx=2, pady=2, sticky=E)

        #frame to communicate (write/read) with the MIC
        self.adressframe = LabelFrame(self.dataframe, text='Parameters:', width=50)
        self.adressframe.grid(column=1, row=3, sticky=N+W+S+E)

        #lable read and write
        self.labelaction = Label(self.adressframe, text="Read / Write: ", width=15)
        self.labelaction.grid(row=6, column=1, padx=2, pady=2)
        
        #blank lable between buttons and entry boxes
        self.blank_label = Label(self.adressframe, text="", width=5)
        self.blank_label.grid(row=1, column=3, columnspan=1)
        
        #to choose if read from or write to the MIC or jus send one line
        self.choices = ['read', 'write', '1 line']
        self.action = StringVar()
        self.action.set('read')
        self.actiondata = OptionMenu(self.adressframe, self.action, *self.choices)
        self.actiondata.config(width=10)
        self.actiondata.grid(row=6, column=2, padx=2, pady=2)

        #button to send file
        self.buttonSendmem = Button(self.adressframe, text="Send", command=self.processButtonSendmem, width=15)
        self.buttonSendmem.grid(row=4, column=4, padx=2, pady=2, sticky=tk.W)

        #read button
        self.buttonRead = Button(self.adressframe, text="Read", command=self.processButtonRead, width=15)
        self.buttonRead.grid(row=5, column=4, padx=2, pady=2, sticky=tk.W) 
        
        #button to send adress/data
        self.buttonSend2 = Button(self.adressframe, text="Send", command=self.processButtonSend, width=13)
        self.buttonSend2.grid(row=7, column=2, padx=2, pady=2, sticky=tk.W)
        
        #Send only one line Label
        self.labelaction = Label(self.adressframe, text="For single line", width=15)
        self.labelaction.grid(row=1, column=1, padx=2, pady=2)
        
        
        #Mem file label
        self.blank_label2 = Label(self.adressframe, text="For MEM file", width=15)
        self.blank_label2.grid(row=1, column=4, padx=2, pady=2)

        #lable and entry box for adress 
        self.labeladress = Label(self.adressframe, text="Adress: ", width=15)
        self.adress = StringVar()
        self.entryadress = Entry(self.adressframe, textvariable=self.adress, width=15)
        self.labeladress.grid(row=4, column=1, padx=2, pady=2)
        self.entryadress.grid(row=4, column=2, padx=2, pady=2)

        #lable and entry box for data
        self.labelData = Label(self.adressframe, text="Data: ", width=15)
        self.Data = StringVar()
        self.entrydata = Entry(self.adressframe, textvariable=self.Data, width=15)
        self.labelData.grid(row=5, column=1, padx=2, pady=2)
        self.entrydata.grid(row=5, column=2, padx=2, pady=2)
        
        #button to clear the status and the send data window
        self.buttonRead = Button(self.adressframe, text="Clear Window", command=self.processButtonDelete, width=15)
        self.buttonRead.grid(row=7, column=4, padx=2, pady=2, sticky=tk.W) 

        #frame to display send data
        self.labelOutText = LabelFrame(self.dataframe, text="Send Data:", width=50)
        self.labelOutText.grid(row=7, column=1, sticky=S+W)
        self.text = Text(self.labelOutText, width=50, height=30)
        self.text.grid(row=7, column=1,sticky=S+W+E)


gui = MIC1()
gui.run()
