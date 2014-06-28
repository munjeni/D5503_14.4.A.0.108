.class Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;
.super Landroid/database/ContentObserver;
.source "TwoStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 173
    if-nez p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    # invokes: Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V
    invoke-static {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$200(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    .line 180
    :cond_0
    return-void
.end method
