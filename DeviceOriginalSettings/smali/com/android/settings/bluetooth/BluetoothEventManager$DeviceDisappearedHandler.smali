.class Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;
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
    name = "DeviceDisappearedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 225
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 226
    .local v0, "cachedDevice":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 227
    const-string v3, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received ACTION_DISAPPEARED for an unknown device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothCallback;

    .line 233
    .local v1, "callback":Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothCallback;
    invoke-interface {v1, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 235
    .end local v1    # "callback":Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
