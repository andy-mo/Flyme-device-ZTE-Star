.class final Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 55
    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->V:Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HidProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v3, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$102(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 58
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$100(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$200(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 63
    .local v0, "device":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 64
    const-string v3, "HidProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$200(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$300(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mProfileManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$400(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;)Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    .line 68
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 70
    .end local v0    # "device":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    const/4 v4, 0x1

    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$502(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;Z)Z

    .line 71
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 74
    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->V:Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;->access$502(Lcom/flyme/DeviceOriginalSettings/bluetooth/HidProfile;Z)Z

    .line 76
    return-void
.end method
