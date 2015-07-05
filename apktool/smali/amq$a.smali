.class public final Lamq$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lakw;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added_friends_timestamp"
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakq;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lamq;


# direct methods
.method constructor <init>(Lamq;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lakw;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p1, p0, Lamq$a;->d:Lamq;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 87
    iput-object p2, p0, Lamq$a;->a:Ljava/util/Map;

    .line 88
    invoke-static {}, Lajx;->a()Lajx;

    invoke-static {}, Lajx;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lamq$a;->b:Ljava/lang/Long;

    .line 89
    iget-object v0, p1, Lamq;->b:Ljava/util/List;

    iput-object v0, p0, Lamq$a;->c:Ljava/util/List;

    .line 91
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    .line 92
    iget-object v0, p0, Lamq$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    const-string v3, "UpdateSnapOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RequestPayload - snapUpdatesCount "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " addedFriendsTimeStamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lamq$a;->b:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " analyticsEventsCount "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lamq$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
