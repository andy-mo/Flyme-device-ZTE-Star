.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

.field final synthetic val$oldSettingsValue:I


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;I)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;->val$oldSettingsValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$15;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;->cancelDialog(I)V

    .line 565
    return-void
.end method
