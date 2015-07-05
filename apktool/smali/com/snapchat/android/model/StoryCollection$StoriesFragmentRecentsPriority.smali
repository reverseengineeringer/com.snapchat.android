.class public final enum Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/StoryCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoriesFragmentRecentsPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

.field public static final enum LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

.field public static final enum RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    new-instance v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    const-string v1, "RECENT_UPDATES"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    .line 653
    new-instance v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    .line 651
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    sget-object v1, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->$VALUES:[Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    .locals 1

    .prologue
    .line 651
    const-class v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->$VALUES:[Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    return-object v0
.end method
