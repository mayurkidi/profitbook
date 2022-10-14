from django.urls import path
from . import views

urlpatterns = [
    path('', views.function, name="Home-Page"),
    # transaction
    path('cash_entry', views.cash_entry),
    path('bank_entry', views.bank_entry),
    path('jouneral_entry', views.jouneral_entry),
    path('purchase_entry', views.purchase_entry),
    path('add_purchase', views.add_purchase),
    path('sales_entry', views.sales_entry),
    path('add_sales', views.add_sales),
    path('save_purchase', views.save_purchase),
    path('editp/<int:id>', views.editp),
    path('deletep/<int:id>', views.deletep),
    path('edits/<int:id>', views.edits),
    path('deletes/<int:id>', views.deletes),
    path('save_sales',views.save_sales),
    path('add_cash',views.add_cash),
    path('editc/<int:id>', views.editc),
    path('deletec/<int:id>', views.deletec),
    path('save_cash',views.save_cash),
    path('editb/<int:id>', views.editb),
    path('deleteb/<int:id>', views.deleteb),
    path('save_bank',views.save_bank),
    path('add_bank',views.add_bank),
    path('save_jouneral',views.save_jouneral),
    path('add_jouneral',views.add_jouneral),
    path('editj/<int:id>', views.editj),
    path('deletej/<int:id>', views.deletej),
    path('ledger_entry',views.ledger_entry),
    path('add_ledger',views.add_ledger),
    path('save_ledger',views.save_ledger),
    path('editl/<int:id>', views.editl),
    path('deletel/<int:id>', views.deletel),
    path('updatep/<int:id>', views.updatep),
    path('updates/<int:id>', views.updates),
    path('updatec/<int:id>', views.updatec),
    path('updateb/<int:id>', views.updateb),
    path('updatej/<int:id>', views.updatej),
    path('updatel/<int:id>', views.updatel)

]
