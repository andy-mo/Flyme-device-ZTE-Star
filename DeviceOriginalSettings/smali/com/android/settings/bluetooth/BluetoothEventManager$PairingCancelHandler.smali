.class Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 356
    if-nez p3, :cond_1

    .line 357
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const v1, 0x7f0904d1

    .line 361
    .local v1, "errorMsg":I
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 362
    .local v0, "cachedDevice":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
