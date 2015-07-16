.class public final Lbbv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

.field public mCount:J

.field public mCreatedAt:J


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbbv;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 13
    iput-wide p4, p0, Lbbv;->mCount:J

    .line 14
    iput-wide p2, p0, Lbbv;->mCreatedAt:J

    .line 15
    return-void
.end method
