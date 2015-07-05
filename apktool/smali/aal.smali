.class public final Laal;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Laal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Laal;

    invoke-direct {v0}, Laal;-><init>()V

    sput-object v0, Laal;->a:Laal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static a()Laal;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Laal;->a:Laal;

    return-object v0
.end method


# virtual methods
.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lajv;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {}, Laal;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laal;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lajv;->a(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "FriendsWhoAddedMe"

    return-object v0
.end method
