.class Lcom/android/settings/Settings$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings$HeaderAdapter;

.field final synthetic val$header:Landroid/preference/PreferenceActivity$Header;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    iput-object p2, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->val$header:Landroid/preference/PreferenceActivity$Header;

    iput p3, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->val$header:Landroid/preference/PreferenceActivity$Header;

    iget v2, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 991
    return-void
.end method
