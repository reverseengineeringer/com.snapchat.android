.class public final Laah;
.super Lcom/snapchat/android/database/table/SnapbryoTable;
.source "SourceFile"


# static fields
.field private static a:Laah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Laah;

    invoke-direct {v0}, Laah;-><init>()V

    sput-object v0, Laah;->a:Laah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/database/table/SnapbryoTable;-><init>()V

    return-void
.end method

.method public static a()Laah;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Laah;->a:Laah;

    return-object v0
.end method


# virtual methods
.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Laim;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-virtual {v1}, Lajn;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Laah;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajn;->a(Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "FailedPostSnapbryoTable"

    return-object v0
.end method
