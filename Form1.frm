VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Neoware Char Viewer"
   ClientHeight    =   5040
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3855
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5040
   ScaleWidth      =   3855
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Effacer"
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   4800
      Width           =   1095
   End
   Begin VB.TextBox tt 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   0
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   4800
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Fermer"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   4560
      Width           =   3855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Copier les elements selectionnées"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   4320
      Width           =   3855
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4350
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Clipboard.SetText tt.Text
End Sub

Private Sub Command3_Click()
tt.Text = ""
End Sub

Private Sub Form_Load()
Dim i As Integer
For i = 1 To 255
List1.AddItem i & " - " & Chr(i)
Next
End Sub

Private Sub List1_DblClick()
On Error Resume Next
tt.Text = tt.Text & " " & Chr(List1.ListIndex + 1)
End Sub
