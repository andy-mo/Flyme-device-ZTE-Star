.class Lcom/flyme/DeviceOriginalSettings/ProxySelector$2;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/ProxySelector;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method
