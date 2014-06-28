.class public Lcom/sonyericsson/conversations/ui/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$1;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;,
        Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 74
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 7

    .prologue
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v2, "patternString":Ljava/lang/StringBuilder;
    const-string v4, "(?<=^|\\s)("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    .local v1, "keySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$LengthComparator;-><init>(Lcom/sonyericsson/conversations/ui/util/SmileyParser$1;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 195
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ")"

    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v4, "(?=\\s|$)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    return-object v4
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v10, "smileyToRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;->values()[Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 163
    .local v7, "smiley":Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;->getSmileyDrawableRes()I

    move-result v2

    .line 164
    .local v2, "drawableRes":I
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;->getSmileyArrayRes()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "smileyTexts":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v8, v1, v3

    .line 166
    .local v8, "smileyText":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    .end local v8    # "smileyText":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 170
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "drawableRes":I
    .end local v6    # "len$":I
    .end local v7    # "smiley":Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;
    .end local v9    # "smileyTexts":[Ljava/lang/String;
    :cond_1
    return-object v10
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->sInstance:Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    .line 53
    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    .local v2, "resId":I
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 218
    .end local v2    # "resId":I
    :cond_0
    return-object v0
.end method
