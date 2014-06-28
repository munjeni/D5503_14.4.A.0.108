.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field mEndOffset:I

.field mRowNumber:I

.field mStartOffset:I

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;


# direct methods
.method public constructor <init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;II)V
    .locals 0
    .param p2, "row"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "startOffset"    # I
    .param p5, "endOffset"    # I

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->this$0:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mText:Ljava/lang/String;

    .line 120
    iput p2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    .line 121
    iput p4, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mStartOffset:I

    .line 122
    iput p5, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mEndOffset:I

    .line 123
    return-void
.end method


# virtual methods
.method public getWord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mStartOffset:I

    iget v2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mEndOffset:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
