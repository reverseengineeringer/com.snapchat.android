.class public abstract Lcom/snapchat/android/database/vtable/DbVirtualTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->values()[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 50
    const-string v5, "DbVirtualTable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create virtual table "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->getVirtualTable()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v4}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->getVirtualTable()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[Lzw;
.end method
