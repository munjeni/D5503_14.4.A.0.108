.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SimContacts;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/Cursor;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Landroid/accounts/Account;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SimContacts;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 23
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 147
    new-instance v18, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 149
    .local v18, "namePhoneTypePair":Lcom/android/phone/SimContacts$NamePhoneTypePair;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 150
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    move/from16 v21, v0

    .line 151
    .local v21, "phoneType":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 152
    .local v20, "phoneNumber":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "emailAddresses":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "emailAddressArray":[Ljava/lang/String;
    :goto_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v19, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 164
    .local v9, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/16 v16, 0x0

    .line 165
    .local v16, "myGroupsId":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 166
    const-string v2, "account_name"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    const-string v2, "account_type"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    const-string v2, "com.google"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    const-string v5, "title=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "System Group: My Contacts"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 176
    .local v22, "tmpCursor":Landroid/database/Cursor;
    if-eqz v22, :cond_0

    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 180
    :cond_0
    if-eqz v22, :cond_1

    .line 181
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v22    # "tmpCursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 191
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 197
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 198
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 199
    const-string v2, "data2"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 200
    const-string v2, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 201
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 202
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    if-eqz v12, :cond_5

    .line 205
    move-object v8, v12

    .local v8, "arr$":[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v15, :cond_5

    aget-object v11, v8, v14

    .line 206
    .local v11, "emailAddress":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 207
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 208
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 209
    const-string v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    const-string v2, "data1"

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 157
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "emailAddress":Ljava/lang/String;
    .end local v12    # "emailAddressArray":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "myGroupsId":Ljava/lang/String;
    .end local v19    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "emailAddressArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 180
    .restart local v9    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v16    # "myGroupsId":Ljava/lang/String;
    .restart local v19    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v22    # "tmpCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v22, :cond_3

    .line 181
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_3
    throw v2

    .line 186
    .end local v22    # "tmpCursor":Landroid/database/Cursor;
    :cond_4
    sget-object v2, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 215
    :cond_5
    if-eqz v16, :cond_6

    .line 216
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 217
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 218
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 219
    const-string v2, "group_sourceid"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 220
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_6
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :goto_3
    return-void

    .line 225
    :catch_0
    move-exception v10

    .line 226
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "SimContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 227
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 228
    .local v10, "e":Landroid/content/OperationApplicationException;
    const-string v2, "SimContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private importOneSimContact(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v1, "SimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move the cursor to the position \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 269
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 332
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 334
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 335
    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 336
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 337
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 338
    const/4 v2, 0x1

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 248
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 249
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "accountName":Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 256
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 347
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 348
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 350
    .local v0, "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 354
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0b03b2

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 356
    .end local v0    # "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 287
    const/4 v0, 0x2

    const v1, 0x7f0b03b3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 365
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 367
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 360
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 361
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 304
    :pswitch_0
    const v3, 0x7f0b03b3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "title":Ljava/lang/CharSequence;
    const v3, 0x7f0b03b4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {v3, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    .line 309
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 310
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 313
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    const v5, 0x7f0b01ee

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 316
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 320
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 323
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 264
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 266
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 293
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 294
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 297
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 295
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
