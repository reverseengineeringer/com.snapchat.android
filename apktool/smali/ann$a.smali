.class public final Lann$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
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
            "Lalr;",
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
            "Lall;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lann;


# direct methods
.method constructor <init>(Lann;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lalr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lann$a;->d:Lann;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 87
    iput-object p2, p0, Lann$a;->a:Ljava/util/Map;

    .line 88
    invoke-static {}, Lakr;->a()Lakr;

    invoke-static {}, Lakr;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lann$a;->b:Ljava/lang/Long;

    .line 89
    iget-object v0, p1, Lann;->b:Ljava/util/List;

    iput-object v0, p0, Lann$a;->c:Ljava/util/List;

    .line 91
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    .line 92
    iget-object v0, p0, Lann$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestPayload - snapUpdatesCount "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addedFriendsTimeStamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lann$a;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " analyticsEventsCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lann$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
