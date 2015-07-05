.class public Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/service/listener/SpeechActivityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityInfo"
.end annotation


# instance fields
.field private activity:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/addlive/service/listener/SpeechActivityEvent;

.field private userId:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/addlive/service/listener/SpeechActivityEvent;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->this$0:Lcom/addlive/service/listener/SpeechActivityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "userId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->userId:Ljava/lang/Long;

    .line 35
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->activity:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/service/listener/SpeechActivityEvent;Lorg/json/JSONObject;Lcom/addlive/service/listener/SpeechActivityEvent$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;-><init>(Lcom/addlive/service/listener/SpeechActivityEvent;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->activity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/SpeechActivityEvent$ActivityInfo;->activity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
