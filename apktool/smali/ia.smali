.class public final enum Lia;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lia;

.field public static final enum ANDROID:Lia;

.field public static final enum IOS:Lia;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lia;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lia;->ANDROID:Lia;

    .line 9
    new-instance v0, Lia;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v3}, Lia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lia;->IOS:Lia;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lia;

    sget-object v1, Lia;->ANDROID:Lia;

    aput-object v1, v0, v2

    sget-object v1, Lia;->IOS:Lia;

    aput-object v1, v0, v3

    sput-object v0, Lia;->$VALUES:[Lia;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lia;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lia;

    return-object v0
.end method

.method public static values()[Lia;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lia;->$VALUES:[Lia;

    invoke-virtual {v0}, [Lia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lia;

    return-object v0
.end method
