from django import  forms
from .models  import *
class Purchaseform(forms.ModelForm):
    class Meta:
        model=Purchase_entry
        fields="__all__"
class Salesform(forms.ModelForm):
    class Meta:
        model=Sales_entry
        fields="__all__"
class Jouneralform(forms.ModelForm):
    class Meta:
        model=Jouneral_entry
        fields="__all__"
class Bankform(forms.ModelForm):
    class Meta:
        model=Bank_entry
        fields="__all__"
class Cashform(forms.ModelForm):
    class Meta:
        model=Cash_entry
        fields="__all__"
class Ledgerform(forms.ModelForm):
    class Meta:
        model=Ledger_entry
        fields="__all__"