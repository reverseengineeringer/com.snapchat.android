.class public final Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$1;,
        Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

.field private d:Ljava/lang/String;

.field private final e:Lacf;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lacf;->a()Lacf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;-><init>(Landroid/content/Intent;Lacf;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lacf;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->a:Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->a:Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->c:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->c:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    sget-object v1, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->SAVE:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    if-ne v0, v1, :cond_1

    .line 33
    const-string v0, "verified_devices"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->b:Ljava/util/List;

    .line 37
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->e:Lacf;

    .line 38
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->c:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    sget-object v1, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->DELETE:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    if-ne v0, v1, :cond_0

    .line 35
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    sget-object v0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->c:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    invoke-virtual {v1}, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "VerifiedDeviceTable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "VerifiedDeviceTable"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "VerifiedDeviceTable"

    invoke-virtual {v0, v1, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "VerifiedDeviceTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
