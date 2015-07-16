.class public final Lakp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final mConversationsUpdated:Z

.field private final mFriendsUpdated:Z

.field public final mStoriesUpdated:Z

.field private final mUpdatesUpdated:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .prologue
    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-boolean p1, p0, Lakp$a;->mUpdatesUpdated:Z

    .line 1142
    iput-boolean p2, p0, Lakp$a;->mFriendsUpdated:Z

    .line 1143
    iput-boolean p3, p0, Lakp$a;->mStoriesUpdated:Z

    .line 1144
    iput-boolean p4, p0, Lakp$a;->mConversationsUpdated:Z

    .line 1145
    return-void
.end method
