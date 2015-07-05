.class public final Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/StoryAdStreamDataTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public nextUnviewedPosition:I

.field public streamKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->streamKey:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->nextUnviewedPosition:I

    .line 39
    return-void
.end method
