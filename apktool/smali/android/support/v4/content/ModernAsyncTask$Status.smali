.class public final Landroid/support/v4/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v4/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$2b1ab531:[I

.field public static final enum FINISHED$20e42a94:I

.field public static final enum PENDING$20e42a94:I

.field public static final enum RUNNING$20e42a94:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 93
    sput v3, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING$20e42a94:I

    .line 97
    sput v4, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING$20e42a94:I

    .line 101
    sput v0, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED$20e42a94:I

    .line 89
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING$20e42a94:I

    aput v2, v0, v1

    sget v1, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING$20e42a94:I

    aput v1, v0, v3

    sget v1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED$20e42a94:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES$2b1ab531:[I

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values$2233144e()[I
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES$2b1ab531:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
