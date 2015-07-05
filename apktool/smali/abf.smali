.class public final Labf;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[Ljava/lang/String;

.field private static c:Labf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->values()[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    move-result-object v2

    .line 36
    array-length v3, v2

    .line 37
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Labf;->b:[Ljava/lang/String;

    move v1, v0

    .line 38
    :goto_0
    if-ge v1, v3, :cond_0

    .line 39
    sget-object v4, Labf;->b:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Labf;->a:Ljava/util/HashMap;

    .line 44
    invoke-static {}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->values()[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 45
    sget-object v4, Labf;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Labf;
    .locals 2

    .prologue
    .line 50
    const-class v1, Labf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labf;->c:Labf;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Labf;

    invoke-direct {v0}, Labf;-><init>()V

    sput-object v0, Labf;->c:Labf;

    .line 53
    :cond_0
    sget-object v0, Labf;->c:Labf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Snap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->values()[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "VerifiedDeviceTable"

    return-object v0
.end method

.method public final c(Lajv;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-static {}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->values()[Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    move-result-object v2

    .line 60
    array-length v3, v2

    .line 61
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 62
    aget-object v4, v2, v0

    .line 63
    if-lez v0, :cond_0

    .line 64
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getDataType()Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
