/*
**	Project : RingQt - Objects Library
**	File Purpose : Windows Controller Class Parent
**	Date : 2016.12.12
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

class WindowsControllerParent from WindowsControllerBase

	RingQt_nParentID=0		# Parent Object ID 

	func Start		
		oView.win.Show()

	func setParentObject oParent
		RingQt_nParentID = oParent.ObjectID()

	func Parent
		return GetObjectByID(RingQt_nParentID)

	func IsParent
		return RingQt_nParentID

	func CloseAction
		oView.Close()
		Super.Close()

class WindowsViewParent
	func Close
		win.close()
