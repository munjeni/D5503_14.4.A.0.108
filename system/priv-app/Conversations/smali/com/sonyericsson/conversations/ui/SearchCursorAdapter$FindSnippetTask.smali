.class Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;
.super Landroid/os/AsyncTask;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindSnippetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/text/SpannableString;",
        ">;"
    }
.end annotation


# instance fields
.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;

.field private mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Landroid/text/style/ForegroundColorSpan;)V
    .locals 0
    .param p1, "textViewSnippet"    # Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    .param p2, "fullText"    # Ljava/lang/String;
    .param p3, "targetString"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/util/regex/Pattern;
    .param p5, "foregroundColorSpan"    # Landroid/text/style/ForegroundColorSpan;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    .line 218
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    .line 221
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 222
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;
    .locals 27
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 227
    :cond_0
    const/16 v17, 0x0

    .line 307
    :cond_1
    :goto_0
    return-object v17

    .line 230
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "fullTextLower":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 233
    .local v20, "targetStringLower":Ljava/lang/String;
    const/16 v19, 0x0

    .line 234
    .local v19, "startPos":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v14

    .line 235
    .local v14, "searchStringLength":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 237
    .local v5, "bodyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 238
    .local v10, "m":Ljava/util/regex/Matcher;
    if-eqz v10, :cond_3

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 239
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    .line 242
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    .line 244
    .local v22, "tp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 245
    .local v15, "searchStringWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 247
    .local v21, "textFieldWidth":F
    const/16 v16, 0x0

    .line 248
    .local v16, "snippetString":Ljava/lang/String;
    cmpl-float v23, v15, v21

    if-lez v23, :cond_6

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v19, v14

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 293
    :cond_4
    if-eqz v16, :cond_b

    .line 294
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    .local v17, "spannable":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 296
    const/16 v18, 0x0

    .line 298
    .local v18, "start":I
    :cond_5
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v24

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 302
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 251
    .end local v17    # "spannable":Landroid/text/SpannableString;
    .end local v18    # "start":I
    :cond_6
    # getter for: Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 252
    .local v7, "ellipsisWidth":F
    const/high16 v23, 0x40000000

    mul-float v23, v23, v7

    sub-float v21, v21, v23

    .line 255
    const/4 v13, -0x1

    .line 256
    .local v13, "offset":I
    const/16 v18, -0x1

    .line 257
    .restart local v18    # "start":I
    const/4 v8, -0x1

    .line 264
    .local v8, "end":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v23

    if-nez v23, :cond_4

    .line 265
    add-int/lit8 v13, v13, 0x1

    .line 267
    const/16 v23, 0x0

    sub-int v24, v19, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 268
    .local v12, "newstart":I
    add-int v23, v19, v14

    add-int v23, v23, v13

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 270
    .local v11, "newend":I
    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    if-eq v11, v8, :cond_4

    .line 274
    :cond_7
    move/from16 v18, v12

    .line 275
    move v8, v11

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "candidate":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    cmpl-float v23, v23, v21

    if-gtz v23, :cond_4

    .line 288
    const-string v24, "%s%s%s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-nez v18, :cond_9

    const-string v23, ""

    :goto_3
    aput-object v23, v25, v26

    const/16 v23, 0x1

    aput-object v6, v25, v23

    const/16 v26, 0x2

    if-ne v8, v5, :cond_a

    const-string v23, ""

    :goto_4
    aput-object v23, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 290
    goto :goto_1

    .line 280
    .end local v6    # "candidate":Ljava/lang/String;
    :cond_8
    const-string v6, ""

    goto :goto_2

    .line 288
    .restart local v6    # "candidate":Ljava/lang/String;
    :cond_9
    # getter for: Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    :cond_a
    # getter for: Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->sEllipsis:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->access$000()Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    .line 307
    .end local v6    # "candidate":Ljava/lang/String;
    .end local v7    # "ellipsisWidth":F
    .end local v8    # "end":I
    .end local v11    # "newend":I
    .end local v12    # "newstart":I
    .end local v13    # "offset":I
    .end local v18    # "start":I
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/text/SpannableString;)V
    .locals 1
    .param p1, "spannable"    # Landroid/text/SpannableString;

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 315
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, Landroid/text/SpannableString;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->onPostExecute(Landroid/text/SpannableString;)V

    return-void
.end method
