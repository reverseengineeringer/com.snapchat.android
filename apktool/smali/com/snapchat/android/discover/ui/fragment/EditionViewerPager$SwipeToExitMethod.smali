.class public final enum Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeToExitMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum AUTO_ADVANCE:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum BACK_PRESSED:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum ENTER_BACKGROUND:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum SWIPE_BEGINNING:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum SWIPE_DOWN:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

.field public static final enum SWIPE_END:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "SWIPE_DOWN"

    const-string v2, "swipe_down"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_DOWN:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 69
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "SWIPE_BEGINNING"

    const-string v2, "swipe_beginning"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_BEGINNING:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 70
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "SWIPE_END"

    const-string v2, "swipe_end"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_END:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "ENTER_BACKGROUND"

    const-string v2, "enter_background"

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ENTER_BACKGROUND:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "BACK_PRESSED"

    const-string v2, "back_pressed"

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->BACK_PRESSED:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 73
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    const-string v1, "AUTO_ADVANCE"

    const/4 v2, 0x5

    const-string v3, "auto_advance"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->AUTO_ADVANCE:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_DOWN:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_BEGINNING:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_END:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ENTER_BACKGROUND:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->BACK_PRESSED:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->AUTO_ADVANCE:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->$VALUES:[Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->a:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->$VALUES:[Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->a:Ljava/lang/String;

    return-object v0
.end method
