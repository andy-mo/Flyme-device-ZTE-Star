.class Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2$4;->this$1:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 498
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2$4;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 499
    .local v0, "mOkButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 500
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 501
    :cond_0
    return-void

    .line 500
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2$4;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 509
    .local v0, "mOkButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 505
    return-void
.end method
