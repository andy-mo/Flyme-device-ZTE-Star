.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updateAppDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;I)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$300(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$5;->val$uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
