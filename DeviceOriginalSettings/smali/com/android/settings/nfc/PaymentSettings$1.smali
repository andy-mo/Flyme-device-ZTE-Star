.class Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings$1;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bb6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "helpUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "fullUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;

    invoke-virtual {v3, v2}, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v0    # "fullUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v3, "PaymentSettings"

    const-string v4, "Help url not set."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
