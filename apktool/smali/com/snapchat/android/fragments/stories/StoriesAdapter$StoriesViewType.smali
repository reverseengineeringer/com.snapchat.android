.class public final enum Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoriesViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

.field public static final enum DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

.field public static final enum DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

.field public static final enum LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

.field public static final enum MY_STORY_SNAP:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    .line 134
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    const-string v1, "MY_STORY_SNAP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->MY_STORY_SNAP:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    .line 135
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    const-string v1, "LIVE_STORIES"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    .line 136
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->MY_STORY_SNAP:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->$VALUES:[Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    .line 139
    invoke-static {}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->values()[Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->a:I

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->a:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->$VALUES:[Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method
