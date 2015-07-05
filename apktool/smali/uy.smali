.class public final Luy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lut;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "LOADING_FEED_ITEM"

    return-object v0
.end method

.method public final C_()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->LOADING:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
