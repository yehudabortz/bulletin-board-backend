class BulletinSerializer
    def initialize(bulletin_object)
        @bulletin = bulletin_object
    end

    def to_serialized_json
        @bulletin.to_json(:include => {
            :boards => {:include => {
                :items => {}
                }
            }
        })
    end
end