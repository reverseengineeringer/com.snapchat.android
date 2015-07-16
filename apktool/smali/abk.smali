.class public final Labk;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Labk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Labk;

    invoke-direct {v0}, Labk;-><init>()V

    sput-object v0, Labk;->a:Labk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static a()Labk;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Labk;->a:Labk;

    return-object v0
.end method


# virtual methods
.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {}, Labk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lakp;->a(Ljava/util/List;)V

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
