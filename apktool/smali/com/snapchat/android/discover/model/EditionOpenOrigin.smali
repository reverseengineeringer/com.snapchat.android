.class public final enum Lcom/snapchat/android/discover/model/EditionOpenOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/EditionOpenOrigin$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/EditionOpenOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field public static final enum CHAT:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field public static final enum DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field public static final enum STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 10
    new-instance v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v1, "STORIES"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 11
    new-instance v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->CHAT:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    sget-object v1, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->CHAT:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->$VALUES:[Lcom/snapchat/android/discover/model/EditionOpenOrigin;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/EditionOpenOrigin;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/EditionOpenOrigin;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->$VALUES:[Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/EditionOpenOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    return-object v0
.end method


# virtual methods
.method public final getSourceType()Llv;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/snapchat/android/discover/model/EditionOpenOrigin$1;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    sget-object v0, Llv;->DISCOVER:Llv;

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Llv;->STORY:Llv;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Llv;->CHAT:Llv;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
