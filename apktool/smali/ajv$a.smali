.class public final Lajv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajv;
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
    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-boolean p1, p0, Lajv$a;->mUpdatesUpdated:Z

    .line 1130
    iput-boolean p2, p0, Lajv$a;->mFriendsUpdated:Z

    .line 1131
    iput-boolean p3, p0, Lajv$a;->mStoriesUpdated:Z

    .line 1132
    iput-boolean p4, p0, Lajv$a;->mConversationsUpdated:Z

    .line 1133
    return-void
.end method
