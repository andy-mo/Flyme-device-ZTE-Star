.class Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 508
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->fetchAndMergeApps()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->access$500(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V

    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 508
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->populateApps()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->access$600(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V

    .line 519
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method
