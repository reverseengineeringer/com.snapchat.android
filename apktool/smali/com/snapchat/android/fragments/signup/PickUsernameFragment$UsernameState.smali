.class public final enum Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsernameState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

.field public static final enum CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

.field public static final enum INVALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

.field public static final enum IN_PROGRESS:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

.field public static final enum RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

.field public static final enum VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;


# instance fields
.field public final progressBarVisibility:I

.field public final redXVisibility:I

.field public final thumbsDownVisibility:I

.field public final thumbsUpVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 107
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const-string v1, "VALID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    .line 109
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const-string v1, "INVALID"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->INVALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    .line 111
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->IN_PROGRESS:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    .line 113
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const-string v1, "RED_X"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    .line 115
    new-instance v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const-string v1, "CLEAR"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->VALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->INVALID:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->IN_PROGRESS:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->$VALUES:[Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->thumbsUpVisibility:I

    .line 125
    iput p4, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->thumbsDownVisibility:I

    .line 126
    iput p5, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->progressBarVisibility:I

    .line 127
    iput p6, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->redXVisibility:I

    .line 128
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->$VALUES:[Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    return-object v0
.end method
