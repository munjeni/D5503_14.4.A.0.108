.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "list"    # Landroid/widget/MultiAutoCompleteTextView;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

    .line 1114
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    .line 1115
    return-void
.end method

.method private isContainDupNumber(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1185
    invoke-static {p2}, Lcom/sonyericsson/conversations/util/ContactLookup;->determineType(Ljava/lang/String;)I

    move-result v2

    .line 1187
    .local v2, "type":I
    if-ne v2, v3, :cond_1

    .line 1188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1189
    .local v1, "n":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->determineType(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-static {v1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1198
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Ljava/lang/String;
    :goto_0
    return v3

    .line 1195
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 1198
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 1140
    move v0, p2

    .line 1141
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1143
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1147
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1151
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 1123
    move v0, p2

    .line 1124
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1127
    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 1128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    :cond_1
    return v0
.end method

.method public getNameAndNumbers()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1262
    .local v4, "sp":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 1263
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    const/4 v6, 0x0

    .line 1266
    .local v6, "start":I
    const/4 v0, 0x0

    .line 1267
    .local v0, "i":I
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v0, v7, :cond_5

    .line 1268
    if-eq v0, v2, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {v4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z
    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1269
    :cond_0
    if-le v0, v6, :cond_2

    .line 1270
    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>()V

    .line 1271
    .local v1, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNameAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v6, v0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2800(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    .line 1272
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v6, v0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2600(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    .line 1276
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1277
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    invoke-static {v4, v6, v0, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2700(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 1288
    .local v5, "spanLen":I
    if-le v5, v0, :cond_2

    .line 1289
    move v0, v5

    .line 1293
    .end local v1    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v5    # "spanLen":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1295
    :goto_1
    if-ge v0, v2, :cond_3

    invoke-interface {v4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_3

    .line 1296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1299
    :cond_3
    move v6, v0

    goto :goto_0

    .line 1301
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1305
    :cond_5
    return-object v3
.end method

.method public getNumbers(Z)Ljava/util/List;
    .locals 11
    .param p1, "allNumbers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1208
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mSpanList:Ljava/util/List;
    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2500(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 1209
    .local v6, "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    if-eqz p1, :cond_1

    .line 1210
    iget-object v9, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1211
    :cond_1
    iget-object v9, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v3, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->isContainDupNumber(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1212
    iget-object v9, v6, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->mNumber:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1216
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "spanItem":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1217
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 1218
    .local v2, "len":I
    const/4 v8, 0x0

    .line 1219
    .local v8, "start":I
    const/4 v0, 0x0

    .line 1220
    .local v0, "i":I
    :goto_1
    add-int/lit8 v9, v2, 0x1

    if-ge v0, v9, :cond_9

    .line 1221
    if-eq v0, v2, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {v5, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v10

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z
    invoke-static {v9, v10}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1222
    :cond_3
    if-le v0, v8, :cond_5

    .line 1223
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v5, v8, v0, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2600(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1225
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1226
    if-eqz p1, :cond_6

    .line 1227
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    invoke-static {v5, v8, v0, v9}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2700(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v7

    .line 1239
    .local v7, "spanLen":I
    if-le v7, v0, :cond_5

    .line 1240
    move v0, v7

    .line 1244
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "spanLen":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1246
    :goto_3
    if-ge v0, v2, :cond_7

    invoke-interface {v5, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1228
    .restart local v4    # "number":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->isContainDupNumber(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1229
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1250
    .end local v4    # "number":Ljava/lang/String;
    :cond_7
    move v8, v0

    goto :goto_1

    .line 1252
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v8    # "start":I
    :cond_9
    return-object v3
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "charSeq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1160
    move-object v8, p1

    .line 1161
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1163
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 1164
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1167
    :cond_0
    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    add-int/lit8 v2, v6, -0x1

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isSeparator(C)Z
    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2400(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    .end local v8    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object v8

    .line 1173
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$600(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1174
    .local v7, "separator":Ljava/lang/String;
    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 1175
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, v8

    .line 1176
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v8, v4

    .line 1177
    goto :goto_1

    .line 1179
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method
