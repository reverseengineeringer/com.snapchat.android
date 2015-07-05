.class Lpt$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field createdFriendStories:Ljava/util/List;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_friend_stories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbhv;",
            ">;"
        }
    .end annotation
.end field

.field createdFriends:Ljava/util/List;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_friend"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbhu;",
            ">;"
        }
    .end annotation
.end field

.field location:Lpt$b;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field serverInfo:Lbiw;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_info"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
