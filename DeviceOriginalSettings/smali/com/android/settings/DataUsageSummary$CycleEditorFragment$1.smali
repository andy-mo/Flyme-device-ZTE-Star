.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1964
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1966
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1967
    .local v0, "cycleDay":I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1968
    .local v1, "cycleTimezone":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/flyme/DeviceOriginalSettings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 1969
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    const/4 v3, 0x1

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Z)V

    .line 1970
    return-void
.end method
