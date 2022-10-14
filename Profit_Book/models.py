from django.db import models
from django.db import connections


class Purchase_entry(models.Model):
    voucher_no = models.CharField(max_length=100)
    voucher_date = models.CharField(max_length=100)
    party_name = models.CharField(max_length=100)
    items = models.CharField(max_length=100)
    quantity = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    taxable_amount = models.CharField(max_length=100)
    gst_per = models.CharField(max_length=100)
    gst_amount = models.CharField(max_length=100)
    total_amount = models.CharField(max_length=100)

    class Meta:
        db_table = "purchase"

class Sales_entry(models.Model):
    voucher_no = models.CharField(max_length=100)
    voucher_date = models.CharField(max_length=100)
    party_name = models.CharField(max_length=100)
    items = models.CharField(max_length=100)
    quantity = models.CharField(max_length=100)
    price = models.CharField(max_length=100)
    taxable_amount = models.CharField(max_length=100)
    gst_per = models.CharField(max_length=100)
    gst_amount = models.CharField(max_length=100)
    total_amount = models.CharField(max_length=100)

    class Meta:
        db_table = "sales"

class Cash_entry(models.Model):
    voucher_no = models.CharField(max_length=100)
    voucher_date = models.CharField(max_length=100)
    party_name = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)
    narration=models.CharField(max_length=100)
    class Meta:
        db_table = "cash"

class Bank_entry(models.Model):
    voucher_no = models.CharField(max_length=100)
    voucher_date = models.CharField(max_length=100)
    party_name = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)
    narration=models.CharField(max_length=100)
    class Meta:
        db_table = "bank"

class Jouneral_entry(models.Model):
    voucher_no = models.CharField(max_length=100)
    voucher_date = models.CharField(max_length=100)
    cr_party_name = models.CharField(max_length=100)
    dr_party_name = models.CharField(max_length=100)
    cr_amount = models.CharField(max_length=100)
    dr_amount = models.CharField(max_length=100)
    narration = models.CharField(max_length=100)
    class Meta:
        db_table="jouneral"

class Ledger_entry(models.Model):
    party_name= models.CharField(max_length=100)
    party_address= models.CharField(max_length=100)
    gst_no = models.CharField(max_length=100)
    class Meta:
        db_table = "ledger"
class Items(models.Model):
    item_name=models.CharField(max_length=100)
    class Meta:
        db_table="items"