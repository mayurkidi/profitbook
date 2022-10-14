from django.shortcuts import render, redirect
from django.http import HttpResponse
from . import models
from .models import *
from .forms import *


def function(request):
    return render(request, 'Profit_Book/index.html')



def purchase_entry(request):
    #return render(request, 'Profit_Book/transaction/purchase_entry.html')
    displaydata = Purchase_entry.objects.all()
    return render(request, 'Profit_Book/transaction/purchase_entry.html', {'Purchase_entry': displaydata})


def add_purchase(request):
    ledgerdata = Ledger_entry.objects.all()
    itemsdata=Items.objects.all()
    return render(request, 'Profit_Book/purchase/add_purchase.html',{'Ledger_entry':ledgerdata,'Items':itemsdata})


def save_purchase(request):
    if request.method == 'POST':
        purchase_saverecord = Purchase_entry()
        purchase_saverecord.voucher_no = request.POST.get('voucher_no')
        purchase_saverecord.voucher_date = request.POST.get('voucher_date')
        purchase_saverecord.party_name = request.POST.get('party_name')
        purchase_saverecord.items = request.POST.get('items')
        purchase_saverecord.quantity = request.POST.get('quantity')
        purchase_saverecord.price = request.POST.get('price')
        purchase_saverecord.taxable_amount = request.POST.get('taxable_amount')
        purchase_saverecord.gst_per = request.POST.get('gst_per')
        purchase_saverecord.gst_amount = request.POST.get('gst_amount')
        purchase_saverecord.total_amount = request.POST.get('total_amount')
        purchase_saverecord.save()
    return render(request, 'Profit_Book/transaction/purchase_entry.html')

def editp(request,id):
    ledgerdata = Ledger_entry.objects.all()
    itemsdata = Items.objects.all()
    editdata = Purchase_entry.objects.get(id=id)
    return render(request, 'Profit_Book/purchase/edit_purchase.html', {'Purchase_entry': editdata,'Ledger_entry':ledgerdata,'Items':itemsdata })
def updatep(request,id):
    updateep=Purchase_entry.objects.get(id=id)
    form=Purchaseform(request.POST,instance=updateep)
    form.save()
    return render(request,'Profit_Book/transaction/purchase_entry.html')

def deletep(request,id):
    deletedata=Purchase_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Purchase_entry.objects.all()
    return render(request,'Profit_Book/transaction/purchase_entry.html',{'Purchase_entry': afterdelete})


def sales_entry(request):
    salesdata = Sales_entry.objects.all()
    return render(request, 'Profit_Book/transaction/sales_entry.html', {'Sales_entry': salesdata})

def save_sales(request):
    if request.method == 'POST':
        sales_saverecord = Sales_entry()
        sales_saverecord.voucher_no = request.POST.get('voucher_no')
        sales_saverecord.voucher_date = request.POST.get('voucher_date')
        sales_saverecord.party_name = request.POST.get('party_name')
        sales_saverecord.items = request.POST.get('items')
        sales_saverecord.quantity = request.POST.get('quantity')
        sales_saverecord.price = request.POST.get('price')
        sales_saverecord.taxable_amount = request.POST.get('taxable_amount')
        sales_saverecord.gst_per = request.POST.get('gst_per')
        sales_saverecord.gst_amount = request.POST.get('gst_amount')
        sales_saverecord.total_amount = request.POST.get('total_amount')
        sales_saverecord.save()
    return render(request, 'Profit_Book/transaction/sales_entry.html')

def edits(request,id):
    editdata = Sales_entry.objects.get(id=id)
    ledgerdata = Ledger_entry.objects.all()
    itemsdata = Items.objects.all()
    return render(request, 'Profit_Book/sales/edit_sales.html', {'Sales_entry': editdata,'Ledger_entry':ledgerdata,'Items':itemsdata })

def updates(request,id):
    updatees=Sales_entry.objects.get(id=id)
    form=Salesform(request.POST,instance=updatees)
    form.save()
    return render(request,'Profit_Book/transaction/sales_entry.html')


def deletes(request,id):
    deletedata=Sales_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Sales_entry.objects.all()
    return render(request,'Profit_Book/transaction/sales_entry.html',{'Sales_entry': afterdelete})

def add_sales(request):
    ledgerdata = Ledger_entry.objects.all()
    itemsdata = Items.objects.all()
    return render(request, 'Profit_Book/sales/add_sales.html',{'Ledger_entry':ledgerdata,'Items':itemsdata})

def cash_entry(request):
    cashdata = Cash_entry.objects.all()
    return render(request, 'Profit_Book/transaction/cash_entry.html', {'Cash_entry': cashdata})
def add_cash(request):
    ledgerdata = Ledger_entry.objects.all()
    return render(request,'Profit_Book/cash/add_cash.html',{'Ledger_entry':ledgerdata})
def add_bank(request):
    ledgerdata = Ledger_entry.objects.all()
    return render(request,'Profit_Book/bank/add_bank.html',{'Ledger_entry':ledgerdata})


def save_cash(request):
    if request.method == 'POST':
        cash_saverecord = Cash_entry()
        cash_saverecord.voucher_no = request.POST.get('voucher_no')
        cash_saverecord.voucher_date = request.POST.get('voucher_date')
        cash_saverecord.party_name = request.POST.get('party_name')
        cash_saverecord.amount=request.POST.get('amount')
        cash_saverecord.narration = request.POST.get('narration')
        cash_saverecord.save()
    return render(request, 'Profit_Book/transaction/cash_entry.html')

def editc(request,id):
    editdata = Cash_entry.objects.get(id=id)
    ledgerdata = Ledger_entry.objects.all()
    return render(request, 'Profit_Book/cash/edit_cash.html', {'Cash_entry': editdata, 'Ledger_entry':ledgerdata})

def updatec(request,id):
    updateec=Cash_entry.objects.get(id=id)
    form=Cashform(request.POST,instance=updateec)
    form.save()
    return render(request,'Profit_Book/transaction/cash_entry.html')


def deletec(request,id):
    deletedata=Cash_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Cash_entry.objects.all()
    return render(request,'Profit_Book/transaction/cash_entry.html',{'Cash_entry': afterdelete})


def bank_entry(request):
    bankdata = Bank_entry.objects.all()
    return render(request, 'Profit_Book/transaction/bank_entry.html', {'Bank_entry': bankdata})

def save_bank(request):
    if request.method == 'POST':
        bank_saverecord = Bank_entry()
        bank_saverecord.voucher_no = request.POST.get('voucher_no')
        bank_saverecord.voucher_date = request.POST.get('voucher_date')
        bank_saverecord.party_name = request.POST.get('party_name')
        bank_saverecord.amount = request.POST.get('amount')
        bank_saverecord.narration = request.POST.get('narration')
        bank_saverecord.save()
    return render(request, 'Profit_Book/transaction/bank_entry.html')
def editb(request,id):
    editdata = Bank_entry.objects.get(id=id)
    ledgerdata = Ledger_entry.objects.all()
    return render(request, 'Profit_Book/bank/edit_bank.html', {'Bank_entry': editdata ,'Ledger_entry':ledgerdata})

def updateb(request,id):
    updateeb=Bank_entry.objects.get(id=id)
    form=Bankform(request.POST,instance=updateeb)
    form.save()
    return render(request,'Profit_Book/transaction/bank_entry.html')

def deleteb(request,id):
    deletedata=Bank_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Bank_entry.objects.all()
    return render(request,'Profit_Book/transaction/bank_entry.html',{'Bank_entry': afterdelete})



def add_jouneral(request):
    ledgerdata = Ledger_entry.objects.all()
    return render(request,'Profit_Book/jouneral/add_jouneral.html',{'Ledger_entry':ledgerdata})


def jouneral_entry(request):
    jouneraldata = Jouneral_entry.objects.all()
    return render(request, 'Profit_Book/transaction/jouneral_entry.html', {'Jouneral_entry': jouneraldata})


def save_jouneral(request):
    if request.method == 'POST':
        jouneral_saverecord = Jouneral_entry()
        jouneral_saverecord.voucher_no = request.POST.get('voucher_no')
        jouneral_saverecord.voucher_date = request.POST.get('voucher_date')
        jouneral_saverecord.cr_party_name = request.POST.get('cr')
        jouneral_saverecord.dr_party_name = request.POST.get('dr')
        jouneral_saverecord.cr_amount=request.POST.get('cramount')
        jouneral_saverecord.dr_amount=request.POST.get('dramount')
        jouneral_saverecord.narration = request.POST.get('narration')
        jouneral_saverecord.save()
    return render(request, 'Profit_Book/transaction/jouneral_entry.html')
def editj(request,id):
    editdata = Jouneral_entry.objects.get(id=id)
    ledgerdata = Ledger_entry.objects.all()
    return render(request, 'Profit_Book/jouneral/edit_jouneral.html', {'Jouneral_entry': editdata , 'Ledger_entry':ledgerdata})

def updatej(request,id):
    updateej=Jouneral_entry.objects.get(id=id)
    form=Jouneralform(request.POST,instance=updateej)
    form.save()
    return render(request,'Profit_Book/transaction/jouneral_entry.html')


def deletej(request,id):
    deletedata=Jouneral_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Jouneral_entry.objects.all()
    return render(request,'Profit_Book/transaction/jouneral_entry.html',{'Jouneral_entry': afterdelete})

def add_ledger(request):
    return render(request,'Profit_Book/ledger/add_ledger.html')


def ledger_entry(request):
    ledgerdata = Ledger_entry.objects.all()
    return render(request, 'Profit_Book/transaction/ledger_entry.html', {'Ledger_entry': ledgerdata})


def save_ledger(request):
    if request.method == 'POST':
        ledger_saverecord = Ledger_entry()
        ledger_saverecord.party_name= request.POST.get('party_name')
        ledger_saverecord.party_address= request.POST.get('party_address')
        ledger_saverecord.gst_no = request.POST.get('gst_no')
        ledger_saverecord.save()
    return render(request, 'Profit_Book/transaction/ledger_entry.html')
def editl(request,id):
    editdata = Ledger_entry.objects.get(id=id)
    return render(request, 'Profit_Book/ledger/edit_ledger.html', {'Ledger_entry': editdata})
def updatel(request,id):
    updateel=Ledger_entry.objects.get(id=id)
    form=Ledgerform(request.POST,instance=updateel)
    form.save()
    return render(request,'Profit_Book/transaction/ledger_entry.html')


def deletel(request,id):
    deletedata=Ledger_entry.objects.get(id=id)
    deletedata.delete()
    afterdelete=Ledger_entry.objects.all()
    return render(request,'Profit_Book/transaction/ledger_entry.html',{'Ledger_entry': afterdelete})
