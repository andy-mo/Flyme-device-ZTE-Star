.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1374
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mAdapter:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2200(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2300(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1375
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2400(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    return-void

    .end local v0    # "isEmpty":Z
    :cond_0
    move v0, v1

    .line 1374
    goto :goto_0

    .restart local v0    # "isEmpty":Z
    :cond_1
    move v2, v3

    .line 1375
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1376
    goto :goto_2
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1700(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/flyme/DeviceOriginalSettings/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1361
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2100(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1363
    .local v0, "restrictedUids":[I
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mAdapter:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2200(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1364
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1365
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1353
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mAdapter:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2200(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1370
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$12;->updateEmptyVisible()V

    .line 1371
    return-void
.end method
