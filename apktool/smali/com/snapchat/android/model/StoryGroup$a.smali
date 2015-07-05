.class public final Lcom/snapchat/android/model/StoryGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/StoryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mCustomDescription:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mShouldFetchCustomDescription:Z

.field mStoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup$a;->mStoryId:Ljava/lang/String;

    .line 181
    return-void
.end method
