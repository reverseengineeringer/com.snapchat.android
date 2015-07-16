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
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->values()[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create virtual table "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->getVirtualTable()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->getVirtualTable()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

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

.method public abstract c()[Laav;
.end method
