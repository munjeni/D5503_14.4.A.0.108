.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mIsTetherApn:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x7f010012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTetherApn"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean p2, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    .line 66
    return-void
.end method

.method public static clearSelectedKey()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 116
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 117
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f080009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, "widget":Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 79
    check-cast v1, Landroid/widget/RadioButton;

    .line 80
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 81
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 86
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 87
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 90
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    iput-boolean v7, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 98
    .end local v0    # "isChecked":Z
    .end local v1    # "rb":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v5, 0x7f080008

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "textLayout":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 100
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_2
    return-object v3

    .line 94
    .end local v2    # "textLayout":Landroid/view/View;
    .restart local v1    # "rb":Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p2, :cond_2

    .line 126
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 129
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 130
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 134
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 139
    if-eqz p1, :cond_0

    const v0, 0x7f080008

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 143
    iget-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    if-eqz v1, :cond_1

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    const-class v2, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "TetheringApn"

    iget-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIsTetherApn:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 160
    return-void
.end method
