.class final Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$2;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;)I
    .locals 4
    .param p1, "object1"    # Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    .param p2, "object2"    # Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .prologue
    .line 183
    iget-wide v0, p1, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-wide v0, p1, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$2;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$2;->compare(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
