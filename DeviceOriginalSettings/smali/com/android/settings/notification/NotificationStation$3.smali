.class Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$3;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;
    .param p2, "rhs"    # Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;

    .prologue
    .line 109
    iget-wide v0, p2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide v2, p1, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$3;->compare(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;)I

    move-result v0

    return v0
.end method
