.class Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment$2;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment$2;->this$0:Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutDialogFragment;)V

    .line 101
    return-void
.end method
