.class Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;->access$000(Lcom/flyme/DeviceOriginalSettings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V

    .line 143
    return-void
.end method
