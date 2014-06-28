.class public Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;
.super Landroid/app/DialogFragment;
.source "SelectRegionDialog.java"


# static fields
.field private static final ARG_CURRENT_REGION:Ljava/lang/String; = "current_region"

.field public static final TAG:Ljava/lang/String; = "select_region_dialog"


# instance fields
.field private mCurrentRegion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    .prologue
    .line 23
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I

    return v0
.end method

.method public static newInstance(I)Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;
    .locals 3
    .param p0, "currentRegion"    # I

    .prologue
    .line 34
    new-instance v1, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    invoke-direct {v1}, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;-><init>()V

    .line 36
    .local v1, "dialog":Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "current_region"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "current_region"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I

    .line 48
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f05001c

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f05001d

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f05001e

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 53
    .local v3, "regions":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-direct {v1, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 54
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f05001b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    iget v4, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I

    .line 58
    const/4 v2, 0x0

    .line 62
    .local v2, "regionSaved":Z
    :goto_0
    iget v4, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I

    new-instance v5, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;-><init>(Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;Z)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 60
    .end local v2    # "regionSaved":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "regionSaved":Z
    goto :goto_0
.end method
