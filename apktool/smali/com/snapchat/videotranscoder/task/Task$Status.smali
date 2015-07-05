.class public final enum Lcom/snapchat/videotranscoder/task/Task$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/task/Task$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum ABORTED:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum CONFIGURED:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum CONFIG_ERROR:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

.field public static final enum RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 22
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "CONFIGURED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIGURED:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 23
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "CONFIG_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIG_ERROR:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 24
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 25
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->ABORTED:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 26
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 27
    new-instance v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    const-string v1, "FINISHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/Task$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIGURED:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->CONFIG_ERROR:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->ABORTED:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->$VALUES:[Lcom/snapchat/videotranscoder/task/Task$Status;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->$VALUES:[Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/task/Task$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method
