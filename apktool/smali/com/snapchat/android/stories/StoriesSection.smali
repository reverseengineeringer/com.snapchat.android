.class public final enum Lcom/snapchat/android/stories/StoriesSection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/stories/StoriesSection$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/stories/StoriesSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum ADDRESS_BOOK:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum ALL_STORIES:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum DISCOVER:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum FRIENDS:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum LIVE:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum ME:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum NONE:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum RECENT_UPDATES:Lcom/snapchat/android/stories/StoriesSection;

.field public static final enum USERNAME:Lcom/snapchat/android/stories/StoriesSection;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "ME"

    const v2, 0x7f0c0171

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    .line 15
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "DISCOVER"

    const v2, 0x7f0c0111

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->DISCOVER:Lcom/snapchat/android/stories/StoriesSection;

    .line 16
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "LIVE"

    const v2, 0x7f0c015c

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    .line 17
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "RECENT_UPDATES"

    const v2, 0x7f0c0283

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->RECENT_UPDATES:Lcom/snapchat/android/stories/StoriesSection;

    .line 18
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "ALL_STORIES"

    const v2, 0x7f0c0282

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->ALL_STORIES:Lcom/snapchat/android/stories/StoriesSection;

    .line 19
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "USERNAME"

    const/4 v2, 0x5

    const v3, 0x7f0c0147

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->USERNAME:Lcom/snapchat/android/stories/StoriesSection;

    .line 20
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "FRIENDS"

    const/4 v2, 0x6

    const v3, 0x7f0c0146

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->FRIENDS:Lcom/snapchat/android/stories/StoriesSection;

    .line 21
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "ADDRESS_BOOK"

    const/4 v2, 0x7

    const v3, 0x7f0c0145

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->ADDRESS_BOOK:Lcom/snapchat/android/stories/StoriesSection;

    .line 22
    new-instance v0, Lcom/snapchat/android/stories/StoriesSection;

    const-string v1, "NONE"

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/stories/StoriesSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/stories/StoriesSection;

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->ME:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->DISCOVER:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->RECENT_UPDATES:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/stories/StoriesSection;->ALL_STORIES:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->USERNAME:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->FRIENDS:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->ADDRESS_BOOK:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/stories/StoriesSection;->$VALUES:[Lcom/snapchat/android/stories/StoriesSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/snapchat/android/stories/StoriesSection;->a:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/stories/StoriesSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->$VALUES:[Lcom/snapchat/android/stories/StoriesSection;

    invoke-virtual {v0}, [Lcom/snapchat/android/stories/StoriesSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method


# virtual methods
.method public final getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 34
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection$1;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/stories/StoriesSection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    iget v0, p0, Lcom/snapchat/android/stories/StoriesSection;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
