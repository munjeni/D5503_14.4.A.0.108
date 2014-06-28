.class Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferencesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Lcom/sonyericsson/conversations/ui/SettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/SettingsFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/SettingsFragment$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;)V

    return-void
.end method

.method private handlePreferenceChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 305
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f0a0000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SettingsFragment;->mUpdateChecker:Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$000(Lcom/sonyericsson/conversations/ui/SettingsFragment;)Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment$FocusUpdateChecker;->reset()V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;->this$0:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    # invokes: Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateHighlightStatus(Landroid/view/ViewGroup;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->access$100(Lcom/sonyericsson/conversations/ui/SettingsFragment;Landroid/view/ViewGroup;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;->handlePreferenceChanged(Landroid/view/View;Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$PreferencesChangedListener;->handlePreferenceChanged(Landroid/view/View;Landroid/view/View;)V

    .line 299
    return-void
.end method
