.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$4;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$4;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus$4;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;

    # getter for: Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;->access$1000(Lcom/flyme/DeviceOriginalSettings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
